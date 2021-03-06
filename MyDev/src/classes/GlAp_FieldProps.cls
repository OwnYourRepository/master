/************************************************************************************************************
@author    		Accenture : Luke Emberton
@date      		24-Aug-2017
@description: 	This is the properties class for holding field information for data queried from the database
**************************************************************************************************************/
public class GlAp_FieldProps {
    	
    	@AuraEnabled
    	public boolean isFLSVisible{get;set;}
    	
    	@AuraEnabled
    	public boolean isEncrypted{get;set;}
    	
    	@Auraenabled
    	public boolean isEditable{get;set;}
    	
    	@Auraenabled
    	public boolean isRequired{get;set;}
    
    	@AuraEnabled
    	public string fieldName{get;set;}
    	
    	@AuraEnabled
    	public string fieldLabel{get;set;}
    	
    	@AuraEnabled
    	public List<string> pickListValues{get;set;}
    	
    	@AuraEnabled
    	public Map<string, string> pickListEntries{get;set;}
    	
    	@AuraEnabled
    	public string fieldType{get; set;}
    	
    	@AuraEnabled
    	public boolean transformField{get;set;}
    	
    	@AuraEnabled
    	public boolean buttonField{get;set;}
    	
    	@AuraEnabled
    	public string parentObject{get; set;}
    
	/******************************************************************************
	@author    		Echo: Patrick Dixon
	@date      		14 Feb 2018
	@param			Boolean isFLSVisible
	@param			Boolean isEncrypted
	@param			Boolean isEditable
	@param			Boolean isRequired
	@param			String fieldName
	@param			String fieldLabel
	@param			String fieldType
	@param			Boolean transformField
	@param			String parentObject
	@description 	constructors
	*******************************************************************************/
    public GlAp_FieldProps() {
    }
    
    public GlAp_FieldProps(String fieldName, String fieldLabel, Boolean transformField, String parentObject) {		// text read only field
    	this(true, false, false, false, fieldName, fieldLabel, 'text', transformField, parentObject);
    }
    
    public GlAp_FieldProps(Boolean isFLSVisible, Boolean isEncrypted, Boolean isEditable, Boolean isRequired, 
    						String fieldName, String fieldLabel, String fieldType, Boolean transformField, String parentObject) {

		this.isFLSVisible = isFLSVisible;
        this.isEncrypted = isEncrypted;
        this.isEditable = isEditable;
        this.isRequired = isRequired;
        this.fieldName = fieldName;
        this.fieldLabel = fieldLabel;
        this.fieldType = fieldType;
        this.transformField = transformField;
        this.parentObject = parentObject;
    }	
	
	/**********************************************************************************************
	@author      	Accenture: Luke Emberton
	@date      		18-Aug-2017
	@param			DisplayType fldType
	@return			void
	@description		This method is used to set the field Type based on a transformation of the
					Schema field type passed in so that it can be easily evaluated in java script
					in the lightning component controllers
	**********************************************************************************************/
	public void setFieldType(DisplayType fldType){
	        //Need to complete, not all field types supported below in the mapping
	        
	        if(fldType == Schema.DisplayType.STRING || fldType == Schema.DisplayType.ID ){
	            fieldType='text';
	        }
	        else if(fldType==Schema.DisplayType.EMAIL){
	            fieldType='email';
	        }
	        else if(fldType==Schema.DisplayType.PHONE){
	            fieldType='tel';
	        }
	        else if(fldType==Schema.DisplayType.URL){
	            fieldType='url';
	        }
	        else if(fldType == Schema.DisplayType.CURRENCY){
	        	fieldType = 'currency';
	    		}
	        else if(fldType == Schema.DisplayType.INTEGER || fldType == Schema.DisplayType.DOUBLE){
	        		fieldType = 'number';
	    		}
	        else if(fldType==Schema.DisplayType.BOOLEAN){
	            fieldType='checkbox';
	        }
	        else if(fldType==Schema.DisplayType.DATE){
	            fieldType='date';
	        }
	        else if(fldType==Schema.DisplayType.DATETIME){
	            fieldType='datetime-local';
	        }
	        else if(fldType==Schema.DisplayType.MULTIPICKLIST){
	            fieldType='MultiPicklist';
	        }
	         else if(fldType==Schema.DisplayType.PICKLIST){
	            fieldType='select';
	        }
	        else if(fldType==Schema.DisplayType.COMBOBOX){
	            fieldType='combobox';
	        }
	        else if(fldType==Schema.DisplayType.PERCENT){
	            fieldType='percent';
	        }
	        else if(fldType==Schema.DisplayType.REFERENCE){
	            fieldType='reference';
	        }
	        else if(fldType==Schema.DisplayType.TEXTAREA){
	            fieldType='TextArea';
	        }
	        else{
	            fieldType='unsupported';
	        }
	    }
    }