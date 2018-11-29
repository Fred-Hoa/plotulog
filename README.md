# plotUlog

plotUlog is  matlab.m script package for plotting ULog files parsed and converted by pyulog. ULog is a self-describing logging format which is documented  [here](http://dev.px4.io/advanced-ulog-file-format.html).


Please note **plotUlog** is tested under MATLAB version R2016b on win10.

## Installation




- Install **pyulog** which will parse ULog file and convert to .csv files.

**pyulog** can be downloaded from [here](https://github.com/PX4/pyulog)
or visit https://github.com/PX4/pyulog

- clone plotulog git or download and unzip package in any folder.

## File name


Depending on the version of px4 firmware, ULog file can have different names. 

In 1.8.0, ULog files are created as

**/log/yyyy-mm-dd/hh_mm_ss.ulg**
You should copy your log to the log folder in the folder you just cloned or unzipped.

## Run plotUlog

Launch matlab and go to the folder you just cloned or unzipped.

Copy a ULog file into the folder.

In matlab terminal, enter

```bash
plotUlog("log/log_26_2018-11-28-16-16-22(yourlogname).ulg")
```


**plotUlog** will call **pyulog** to create .csv files under **out/log_26_2018-11-28-16-16-22(yourlogname)/** folder and start generating plots. 

Once .csv files are created you can re-plot by entering the folder created from above.

```bash
plotUlog("out/yourlogname/")
```

## Run compareSensorLogs

Once Ulog files successfully converted to csv file, you can compare two different sensor data each other by calling compareSensorLogs as below
If you have csv files under "out/log_26_2018-11-28-16-16-22" and "out/log_27_2018-11-28-16-23-22", enter 
```bash
compareSensorLogs("out/log_26_2018-11-28-16-16-22/","out/log_27_2018-11-28-16-23-22/")
```

and you will get these plots which makes easier for comparing two different sensor data at the same time.

![plotted sensor comparison](https://image.ibb.co/fkHWoe/sensor_Compare.png)

## Development


See what's inside the script file and manipulate any of data you want. 


