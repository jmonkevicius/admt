import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.StringTokenizer;
 
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.conf.*;
import org.apache.hadoop.io.*;
import org.apache.hadoop.mapred.JobClient;
import org.apache.hadoop.mapreduce.*;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;
 
public class WordCount1 {
 
    public static class Map extends Mapper<LongWritable, Text, Text, IntWritable> {
        private final static IntWritable one = new IntWritable(1);
        private Text word = new Text();
 
        public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
    		//System.out.println(value);
            String text = value.toString();
    		String[] parts = text.split(";");
    		IntWritable salary = new IntWritable(Integer.parseInt(parts[1]));
    		int start = Integer.valueOf(parts[2]);
    		int end = Integer.valueOf(parts[3]);
    	 
    		for(int x = start; x <= end; x = x+1) 
    		{
    			context.write( new Text(Integer.toString(x)), salary);
    		}
        }
    } 
 
    public static class Reduce extends Reducer<Text, IntWritable, Text, IntWritable> {
        public void reduce(Text key, Iterable<IntWritable> values, Context context) throws IOException, InterruptedException {
       
        	int sum = 0;
    		int count = 0;
    		
    		for (IntWritable value : values) 
    		{
    			sum += Integer.valueOf( value.toString());
    			count += 1;
    		}
    		
    		IntWritable avg =  new IntWritable( sum / count);
    		
    		context.write(key, avg);
        }
    }
 
    public static void main(String[] args) throws Exception {
    	final long startTime = System.nanoTime();
    	
        Configuration conf = new Configuration();
 
        Job job = new Job(conf, "WordCount");
        job.setJarByClass(WordCount1.class);
        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(IntWritable.class);
 
        job.setMapperClass(Map.class);
        job.setCombinerClass(Reduce.class);
        job.setReducerClass(Reduce.class);
 
        job.setInputFormatClass(TextInputFormat.class);
        job.setOutputFormatClass(TextOutputFormat.class);
 
        FileInputFormat.addInputPath(job, new Path(args[0]));
        FileOutputFormat.setOutputPath(job, new Path(args[1]));
        
        job.waitForCompletion(true);
        
        final long duration = System.nanoTime() - startTime;
        double normal_secs = (double) duration / 1000000000;
        
        
        //second job
        //JobConf job2 = new JobConf(TotalWords.class);
        
        final long startTime2 = System.nanoTime();
        
        Job job2 = new Job(conf, "WordCount");
        job2.setJarByClass(WordCount1.class);
        job2.setOutputKeyClass(Text.class);
        job2.setOutputValueClass(IntWritable.class);
 
        job2.setMapperClass(Map2.class);
        job2.setCombinerClass(Reduce2.class);
        job2.setReducerClass(Reduce2.class);
 
        job2.setInputFormatClass(TextInputFormat.class);
        job2.setOutputFormatClass(TextOutputFormat.class);
        
        FileInputFormat.addInputPath(job2, new Path(args[1]));
        FileOutputFormat.setOutputPath(job2, new Path(args[2]));
 
        job2.waitForCompletion(true);
        
        
        final long duration2 = System.nanoTime() - startTime2;
        double normal_secs2 = (double) duration2 / 1000000000;
        System.out.println("Job1 Duration in nano seconds: " + duration);
        System.out.println("Job1 Duration in normal seconds: " + normal_secs);
        
        System.out.println("Job2 Duration in nano seconds: " + duration2);
        System.out.println("Job2 Duration in normal seconds: " + normal_secs2);
        
        double sum = normal_secs + normal_secs2;
        System.out.println("SUM in normal seconds: " + normal_secs2);
        
    }    
    
    public static class Map2 extends Mapper<LongWritable, Text, Text, IntWritable> {
        private final static IntWritable one = new IntWritable(1);
        private Text word = new Text();
 
        public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        	String text = value.toString();
    		String[] parts = text.split("\t");
    		Text salary = new Text(parts[1]);
    		IntWritable time = new IntWritable(Integer.parseInt(parts[0]));
    		
    		context.write( salary, time);
        }
    } 
    
    public static class Reduce2 extends Reducer<Text, IntWritable, Text, IntWritable> {
        public void reduce(Text key, Iterable<IntWritable> values, Context context) throws IOException, InterruptedException {
       
        	
        	String s = "";
    		
        	List<Integer> list = new ArrayList<Integer>();
    		for (IntWritable value : values) 
    		{
    			//context.getSortComparator()
    			list.add(Integer.parseInt(value.toString()));
    		}
    		Collections.sort(list);
    		
    		int start = 0;
    		int end = 0;
    		
    		for (Integer value : list) 
    		{
    			if(start == 0)
    			{
    				start = value;
    				end = value;
    			}
    			if(value == end+1) end = value;
    			
    			if(value > end+1)
    			{
    				if(start == end) s = s + " " + start;
    				else s = s + " [" + start + "-" + end + "]";
    				
    				start = value;
    				end = value;
    			}
    					
    					
    			//s = s + " " + value.toString();
    			//t = new Text(t.toString() + " " + value.toString());
    		}
    		if(start == end) s = s + " " + start;
			else s = s + " [" + start + "-" + end + "]";
    		
    		
    		Text text = new Text(key.toString() +  " " + s.toString()) ;
    		//write output
    		//IntWritable i = new IntWritable(Integer.parseInt(key.toString()));
    		
    		//context.write(t, i);
    		context.write(text, new IntWritable(999));
        }
    }
}
