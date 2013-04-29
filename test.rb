#!/usr/bin/env ruby
#password = password123 ~ it was for dev purposes and i cant be bothered taking it out ^_^
#password finally removed
login = true
while login==true
puts "Please enter your name, Please note this has to be the user name of your account on your system:"
username = gets.chomp.to_s


	system "clear"
	puts "welcome to the testRB auto shell, if you have any questions please direct them to christopher.forbes@strath.ac.uk"
	gets.chomp
	system("clear")
	login = false
	menu_go = true
end



while menu_go
	puts "Logged in as : #{username}"
	puts "Menu"
	puts "1: print current working directory"
	puts "2: Change working directory"
	puts "3: Open vim / emacs"
	puts "4: ftp"
	puts "5: ssh"
	puts "6: Exit"
	puts "7: tools"
	puts "8: Telnet"
	puts "9: Information Security tools"
	puts "10: Mysql"
	puts "Please make a selection"
	menu_selection = gets.chomp.to_i
	system "clear"
	case menu_selection
when 1
	system("clear")
        system("pwd")
          
	gets.chomp
	system("clear")

when 2
	puts "Please enter the directory you wish to change to"
	change_dir = gets.chomp.to_s
	system "cd #{change_dir}"

when 3
	puts " please select which one you would like to execute"
	puts "1. ViM"
	puts "2. Emacs"
	editor_input = gets.chomp.to_i
	puts "Please enter the name of your file and it's extension"
	name_file = gets.chomp.to_s

	case editor_input
		when 1
			system "vim #{name_file}"

		when 2
			system "emacs23 #{name_file}"
	end	
	puts "Would you like to compile your program?"
	puts "1: Yes"
	puts "2: No"
	compile_option = gets.chomp.to_i
		case compile_option
			when 1
				puts "please select your file type"
				puts "1: C source file"
				puts "2: Ruby source file"
				puts "3: perl source file"
				file_type_s = gets.chomp.to_i
				case file_type_s
					when 1
						system "gcc #{name_file} -o #{name_file}+s"
						system "clear"
					when 2
						system  "ruby #{name_file}"
						system  "clear"
					when 3
						system "perl #{name_file}"
						system "clear"
				end
				puts "would you like to test your project?"
				puts "1. yes"
				puts "2. no"
				test_pr = gets.chomp.to_i
				case test_pr
					when 1
						if file_type_s == 1
						system "./#{name_file}"
						elsif file_type_s == 2
						system "ruby #{name_file}"
						else
						system "perl #{name_file}"
						end
					puts " Press return to goto main menu"
					gets.chomp
			
					when 2
				end
			when 2
		end
	system("clear")
when 4
	puts "Please select FTP location"
	puts "1. Strathclyde"
	puts "2. drive HQ"
	puts "3. back" 
	ftp_select = gets.chomp.to_i

	case ftp_select
		when 1
			puts "Use current login?(AutoshellRB Username) "
			puts "1: yes"
			puts "2: no"
			ftpO = gets.chomp.to_i
			case(ftpO)
				when 1
					puts "Connecting to cafe.cis.strath.ac.uk"
					system "sftp #{username}@cafe.cis.strath.ac.uk"	
				when 2
					puts "Enter Username....."
					ftpU = gets.chomp.to_s
					system "sftp #{ftpU}@cafe.cis.strath.ac.uk"
			end
		when 2 
			puts "Please tell me your current location"
			puts "1. Strathclyde"
			puts "2. Home"
			puts "3. Clear screen"
			location_select= gets.chomp.to_i
				case(location_select)
					when 1
						system "pftp ftp.drivehq.com"
					when 2
						system "ftp ftp.drivehq.com"
					when 3
						system "clear"	
				end
	end
system("clear")
when 5
	puts "Please select SSH location"
	puts "1: Cafe.cis"
	puts "2:more to come....."
	puts "Please select...."
	input_ssh = gets.chomp.to_i
	case input_ssh
		when 1	
			puts "Use Current Login? (AutoshellRB login)"
			puts "1: yes"
			puts "2: no"
			sshO=gets.chomp.to_i
			case (sshO)
				when 1
					puts " Connecting to cafe.cis.strath.ac.uk"
					system" ssh -l #{username} cafe.cis.strath.ac.uk"
				when 2 
					puts"Enter your DS username"
					shU = gets.chomp.to_s
					system "ssh -l #{shU} cafe.cis.strath.ac.uk"
				end
		when 2
			puts "their are currently no more SSH locations"
			puts "\n would you like to enter a new ssh location?"
			puts "1. yes"
			puts "2. no"
			another_ssh = gets.chomp.to_i
			case another_ssh
				when 1
					puts "please enter you ssh string, dont forget -l for login"
					puts "ssh"
					ssh_loca = gets.chomp
					system "ssh #{ssh_loca}"
				when 2
			end
	end
system("clear")
when 6
	menu_go = false
when 7
	puts"tools:"
	puts"1: Load python terminal"
	puts"2: Load GDB debugger"
	puts"3: Switch to Bash"
	puts"4: Load Glasgow Haskell Compiler GHC"
	puts"5: Return to main menu"
	puts"Enter your choice:"
	option_choice = gets.chomp.to_i
	case option_choice
		when 1
			system("python")	
		when 2
			system("gdb")
		when 3
			system("bash")
		when 4
			system("ghc")
		when 5
	end
system("clear")
when 8
	puts "telnet....."
	puts "Select your telnet location"
	puts "1: Fun stuff"
	puts "2: Personal location"
	telnet_selection = gets.chomp.to_i
		case telnet_selection
			when 1
				puts "1: Starwars Animation"
				puts "2: Back"
				puts "enter your selection"
				funny_selection = gets.chomp.to_i
				case funny_selection
					when 1
						puts"Caution:.. This server has been known to cause unstable results.."
						puts"Do you wish to continue?"
						puts"1:Yes"
						puts"2:No"
						telnetCAUTION = gets.chomp.to_i
						case(telnetCAUTION)
						when 1
						system "telnet towel.blinkenlights.nl 23"
						when 2
						end
					when 2
				end
			when 2
			 
				puts "enter your telnet location"
				telnet_loc = gets.chomp.to_s
				system "telnet #{telnet_loc}"
		end
when 99
     system"clear"
     puts"about Page"
     puts" Autoshell was developed to be a lightweight unix shell to allow those without proper the proper skills\n in unix to be able to find their way around the most common features"
     puts" If you have any suggestions on possible functionality you would like to see added to the autoshell please submit them to chris.forbes@strath.ac.uk"
     puts" And thankyou for downloading the autoshell"
     gets.chomp

#work in progress options
when 9
	system("clear")
	puts "...Options..."
	puts "1: Change Color"
	     # limit options or allow mayhem?
	puts "2: Change info (info sec)"
	     # must check for existance of software or launch a get
	puts "3: Launch a get(requires root privelleges)"
	     # mac or linux?
	puts "4: Nmap Launch(requires root privelleges)"
	puts "5: Metasploit Framework (requires Root privelleges)"
	puts "Enter Selection.."
	options_selection = gets.chomp.to_i
case options_selection
when 1 
     puts " under development"
when 2
     puts " under development"

     when 3
		puts " are you running on MAC Os or linux?"
		     puts "1: macosx"
		     puts "2: Linux"
		     puts "Please select your OS"
		     Os_select = gets.chomp.to_i
		     case Os_select
		     	  when 1
			       puts"Please enter the name of the program.."
			       programName = gets.chomp.to_s
			       puts " do you have mac ports installed? "
			       	    puts "1: yes"
				    puts "2: no"
				 macport = gets.chomp.to_i
				 case macport
				      when 1
				      	   system"sudo port install #{programName}"
				      when 2
				      puts " Please install Mac Ports from http://www.macports.org/"
				      end
			  when 2
			       system ("sudo apt-get install #{programName}")
			         
		     end 
     when 4
	puts "enter target IP "
	target_ip = gets.chomp.to_s
	system"sudo nmap #{target_ip}"
	puts "press Return to clear screen and return to main page.."
	gets.chomp
     when 5
     	  puts "1: MSF Cli"
	  puts "2: MSF console"
	  puts "3: MSF Exploit"
	  puts "Enter Your Option.."
     msf_O = gets.chomp.to_i
     	   case msf_O
	   when 1
	   	system"sudo msfcli"
           when 2
	   	system"sudo msfconsole"
 	   when 3
	   	#check the correct command
	   	puts "Under development"
	end
end
when 10
	puts"MySQL....."
	puts"1: Start Mysql server"
	puts"2: Stop Mysql server"
	puts"3: Start SQL prompt"
	sql_selection = gets.chomp.to_i
	case sql_selection
		when 1
				system"sudo /usr/local/mysql/support-files/mysql.server start"
		when 2 
				system" sudo /usr/local/mysql/support-files/mysql.server stop"
		when 3
				system"alias mysql=/usr/local/mysql/bin/mysql"
				puts"Once the bash terminal loads please type mysql"
				system"sudo bash"
	end

system("clear")
end
end
