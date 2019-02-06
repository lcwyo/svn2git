# svn2git
a docker image to use the svn2git tool to convert a subversion repository to a git repository

###### Password
if the svn repo is password protected, it is easiest to mount a local directory, check out the repository and save the creditials.

`svn co  http://path/to/root/of/project`


`docker run --rm -it -v c:/tmp:/github lcwyo/svn2git:latest`



###### Get the list of authors

`$ svn log --quiet http://path/to/root/of/project | grep -E "r[0-9]+ \| .+ \|" | cut -d'|' -f2 | sed 's/ //g' | sort | uniq`


###### do transform 

`svn2git http://path/to/root/of/project --authors authors.txt`

##### push to git
`ps c:\tmp/project>git remote add origin https://github.com/some/path/project.git`
`ps c:\tmp/project>git push -u origin --all`
