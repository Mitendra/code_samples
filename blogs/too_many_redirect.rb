class URLHelper
	def initialize
		@seperator = '/'
		@domainSeperator = '.'
	end

	def getSchema()
		"https"
	end

	def getSubDomainName()
		"www"
	end
	def getVipHostName()
		"samplevip"
	end

	def getRegion()
		"midwest"
	end

	def getTopLevelDomainName()
		"mycompany.com"
	end
	def getVipName()
		getSubDomainName() + @domainSeperator + getVipHostName() + @domainSeperator + getRegion() + @domainSeperator +  getTopLevelDomainName() 
	end

	def getPrefix(usage)
		if usage == "option1"
			return "option1prefix"
		else
			return "defaultprefix"
		end
	end
	def getBasePath(usage)
		getSchema() + @seperator + @seperator + getVipName() + @seperator + getPrefix(usage)
	end

	def getSuffix(usage)
		"defaultSuffix"
	end
	
	def getCommonPath(usage)
		getBasePath(usage) + @seperator + getSuffix(usage)
	end

	def getBaseUrl(usage)
		getCommonPath(usage) + "/SpecificValue"
	end

end

url = URLHelper.new.getBaseUrl("option1")
puts url
# https//www.samplevip.midwest.mycompany.com/option1prefix/defaultSuffix/SpecificValue
