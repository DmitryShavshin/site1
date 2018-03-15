#region Auto-generated classes for simplewebregistrationform database on 2018-02-10 23:33:47Z

//
//  ____  _     __  __      _        _
// |  _ \| |__ |  \/  | ___| |_ __ _| |
// | | | | '_ \| |\/| |/ _ \ __/ _` | |
// | |_| | |_) | |  | |  __/ || (_| | |
// |____/|_.__/|_|  |_|\___|\__\__,_|_|
//
// Auto-generated from simplewebregistrationform on 2018-02-10 23:33:47Z
// Please visit http://linq.to/db for more information

#endregion

using System;
using System.Data;
using System.Data.Linq.Mapping;
using System.Diagnostics;
using System.Reflection;
using DbLinq.Data.Linq;
using DbLinq.Vendor;
using System.ComponentModel;
// Add these libraries //
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class SimpleWeb : DbLinq.MySql.MySqlDataContext
{
	#region Extensibility Method Definitions

	partial void OnCreated();

    #endregion

    //public SimpleWeb()
    //: base(new MySqlConnection("Server=localhost;User=root;Password=ROOT0920x;database=simplewebregistrationform"))
    //{
    //}

    public SimpleWeb()
    : base(new MySqlConnection("Server=localhost;User=root;Password=klan301270;database=simplewebregistrationform"))
    {
    }



    public Table<News> News { get { return GetTable<News>(); } }
	public Table<Registration> Registration { get { return GetTable<Registration>(); } }
	public Table<Resolution> Resolution { get { return GetTable<Resolution>(); } }

}

[Table(Name = "simplewebregistrationform.news")]
public partial class News : INotifyPropertyChanging, INotifyPropertyChanged
{
	#region INotifyPropertyChanging handling

	public event PropertyChangingEventHandler PropertyChanging;

	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs("");
	protected virtual void SendPropertyChanging()
	{
		if (PropertyChanging != null)
		{
			PropertyChanging(this, emptyChangingEventArgs);
		}
	}

	#endregion

	#region INotifyPropertyChanged handling

	public event PropertyChangedEventHandler PropertyChanged;

	protected virtual void SendPropertyChanged(string propertyName)
	{
		if (PropertyChanged != null)
		{
			PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}

	#endregion

	#region Extensibility Method Definitions

	partial void OnCreated();
	partial void OnIDChanged();
	partial void OnIDChanging(int value);
	partial void OnNameChanged();
	partial void OnNameChanging(string value);
	partial void OnPathChanged();
	partial void OnPathChanging(string value);

	#endregion

	#region int ID

	private int _id;
	[DebuggerNonUserCode]
	[Column(Storage = "_id", Name = "id", DbType = "int", IsPrimaryKey = true, IsDbGenerated = true, AutoSync = AutoSync.Never, CanBeNull = false)]
	public int ID
	{
		get
		{
			return _id;
		}
		set
		{
			if (value != _id)
			{
				OnIDChanging(value);
				SendPropertyChanging();
				_id = value;
				SendPropertyChanged("ID");
				OnIDChanged();
			}
		}
	}

	#endregion

	#region string Name

	private string _name;
	[DebuggerNonUserCode]
	[Column(Storage = "_name", Name = "name", DbType = "varchar(200)", AutoSync = AutoSync.Never, CanBeNull = false)]
	public string Name
	{
		get
		{
			return _name;
		}
		set
		{
			if (value != _name)
			{
				OnNameChanging(value);
				SendPropertyChanging();
				_name = value;
				SendPropertyChanged("Name");
				OnNameChanged();
			}
		}
	}

	#endregion

	#region string Path

	private string _path;
	[DebuggerNonUserCode]
	[Column(Storage = "_path", Name = "path", DbType = "varchar(2000)", AutoSync = AutoSync.Never, CanBeNull = false)]
	public string Path
	{
		get
		{
			return _path;
		}
		set
		{
			if (value != _path)
			{
				OnPathChanging(value);
				SendPropertyChanging();
				_path = value;
				SendPropertyChanged("Path");
				OnPathChanged();
			}
		}
	}

	#endregion

	#region ctor

	public News()
	{
		OnCreated();
	}

	#endregion

}

[Table(Name = "simplewebregistrationform.registration")]
public partial class Registration : INotifyPropertyChanging, INotifyPropertyChanged
{
	#region INotifyPropertyChanging handling

	public event PropertyChangingEventHandler PropertyChanging;

	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs("");
	protected virtual void SendPropertyChanging()
	{
		if (PropertyChanging != null)
		{
			PropertyChanging(this, emptyChangingEventArgs);
		}
	}

	#endregion

	#region INotifyPropertyChanged handling

	public event PropertyChangedEventHandler PropertyChanged;

	protected virtual void SendPropertyChanged(string propertyName)
	{
		if (PropertyChanged != null)
		{
			PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}

	#endregion

	#region Extensibility Method Definitions

	partial void OnCreated();
	partial void OnDayChanged();
	partial void OnDayChanging(string value);
	partial void OnEmailChanged();
	partial void OnEmailChanging(string value);
	partial void OnGenderChanged();
	partial void OnGenderChanging(string value);
	partial void OnIDChanged();
	partial void OnIDChanging(int value);
	partial void OnLoginChanged();
	partial void OnLoginChanging(string value);
	partial void OnMonthChanged();
	partial void OnMonthChanging(string value);
	partial void OnNameChanged();
	partial void OnNameChanging(string value);
	partial void OnPasswordChanged();
	partial void OnPasswordChanging(string value);
	partial void OnPhoneChanged();
	partial void OnPhoneChanging(string value);
	partial void OnRoleChanged();
	partial void OnRoleChanging(string value);
	partial void OnSecondNameChanged();
	partial void OnSecondNameChanging(string value);
	partial void OnSureNameChanged();
	partial void OnSureNameChanging(string value);
	partial void OnYearChanged();
	partial void OnYearChanging(string value);

	#endregion

	#region string Day

	private string _day;
	[DebuggerNonUserCode]
	[Column(Storage = "_day", Name = "day", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string Day
	{
		get
		{
			return _day;
		}
		set
		{
			if (value != _day)
			{
				OnDayChanging(value);
				SendPropertyChanging();
				_day = value;
				SendPropertyChanged("Day");
				OnDayChanged();
			}
		}
	}

	#endregion

	#region string Email

	private string _email;
	[DebuggerNonUserCode]
	[Column(Storage = "_email", Name = "email", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string Email
	{
		get
		{
			return _email;
		}
		set
		{
			if (value != _email)
			{
				OnEmailChanging(value);
				SendPropertyChanging();
				_email = value;
				SendPropertyChanged("Email");
				OnEmailChanged();
			}
		}
	}

	#endregion

	#region string Gender

	private string _gender;
	[DebuggerNonUserCode]
	[Column(Storage = "_gender", Name = "gender", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string Gender
	{
		get
		{
			return _gender;
		}
		set
		{
			if (value != _gender)
			{
				OnGenderChanging(value);
				SendPropertyChanging();
				_gender = value;
				SendPropertyChanged("Gender");
				OnGenderChanged();
			}
		}
	}

	#endregion

	#region int ID

	private int _id;
	[DebuggerNonUserCode]
	[Column(Storage = "_id", Name = "id", DbType = "int", IsPrimaryKey = true, IsDbGenerated = true, AutoSync = AutoSync.Never, CanBeNull = false)]
	public int ID
	{
		get
		{
			return _id;
		}
		set
		{
			if (value != _id)
			{
				OnIDChanging(value);
				SendPropertyChanging();
				_id = value;
				SendPropertyChanged("ID");
				OnIDChanged();
			}
		}
	}

	#endregion

	#region string Login

	private string _login;
	[DebuggerNonUserCode]
	[Column(Storage = "_login", Name = "login", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string Login
	{
		get
		{
			return _login;
		}
		set
		{
			if (value != _login)
			{
				OnLoginChanging(value);
				SendPropertyChanging();
				_login = value;
				SendPropertyChanged("Login");
				OnLoginChanged();
			}
		}
	}

	#endregion

	#region string Month

	private string _month;
	[DebuggerNonUserCode]
	[Column(Storage = "_month", Name = "month", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string Month
	{
		get
		{
			return _month;
		}
		set
		{
			if (value != _month)
			{
				OnMonthChanging(value);
				SendPropertyChanging();
				_month = value;
				SendPropertyChanged("Month");
				OnMonthChanged();
			}
		}
	}

	#endregion

	#region string Name

	private string _name;
	[DebuggerNonUserCode]
	[Column(Storage = "_name", Name = "name", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string Name
	{
		get
		{
			return _name;
		}
		set
		{
			if (value != _name)
			{
				OnNameChanging(value);
				SendPropertyChanging();
				_name = value;
				SendPropertyChanged("Name");
				OnNameChanged();
			}
		}
	}

	#endregion

	#region string Password

	private string _password;
	[DebuggerNonUserCode]
	[Column(Storage = "_password", Name = "password", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string Password
	{
		get
		{
			return _password;
		}
		set
		{
			if (value != _password)
			{
				OnPasswordChanging(value);
				SendPropertyChanging();
				_password = value;
				SendPropertyChanged("Password");
				OnPasswordChanged();
			}
		}
	}

	#endregion

	#region string Phone

	private string _phone;
	[DebuggerNonUserCode]
	[Column(Storage = "_phone", Name = "phone", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string Phone
	{
		get
		{
			return _phone;
		}
		set
		{
			if (value != _phone)
			{
				OnPhoneChanging(value);
				SendPropertyChanging();
				_phone = value;
				SendPropertyChanged("Phone");
				OnPhoneChanged();
			}
		}
	}

	#endregion

	#region string Role

	private string _role;
	[DebuggerNonUserCode]
	[Column(Storage = "_role", Name = "role", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string Role
	{
		get
		{
			return _role;
		}
		set
		{
			if (value != _role)
			{
				OnRoleChanging(value);
				SendPropertyChanging();
				_role = value;
				SendPropertyChanged("Role");
				OnRoleChanged();
			}
		}
	}

	#endregion

	#region string SecondName

	private string _secondName;
	[DebuggerNonUserCode]
	[Column(Storage = "_secondName", Name = "secondname", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string SecondName
	{
		get
		{
			return _secondName;
		}
		set
		{
			if (value != _secondName)
			{
				OnSecondNameChanging(value);
				SendPropertyChanging();
				_secondName = value;
				SendPropertyChanged("SecondName");
				OnSecondNameChanged();
			}
		}
	}

	#endregion

	#region string SureName

	private string _sureName;
	[DebuggerNonUserCode]
	[Column(Storage = "_sureName", Name = "surename", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string SureName
	{
		get
		{
			return _sureName;
		}
		set
		{
			if (value != _sureName)
			{
				OnSureNameChanging(value);
				SendPropertyChanging();
				_sureName = value;
				SendPropertyChanged("SureName");
				OnSureNameChanged();
			}
		}
	}

	#endregion

	#region string Year

	private string _year;
	[DebuggerNonUserCode]
	[Column(Storage = "_year", Name = "`year`", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string Year
	{
		get
		{
			return _year;
		}
		set
		{
			if (value != _year)
			{
				OnYearChanging(value);
				SendPropertyChanging();
				_year = value;
				SendPropertyChanged("Year");
				OnYearChanged();
			}
		}
	}

	#endregion

	#region ctor

	public Registration()
	{
		OnCreated();
	}

	#endregion

}

[Table(Name = "simplewebregistrationform.resolution")]
public partial class Resolution : INotifyPropertyChanging, INotifyPropertyChanged
{
	#region INotifyPropertyChanging handling

	public event PropertyChangingEventHandler PropertyChanging;

	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs("");
	protected virtual void SendPropertyChanging()
	{
		if (PropertyChanging != null)
		{
			PropertyChanging(this, emptyChangingEventArgs);
		}
	}

	#endregion

	#region INotifyPropertyChanged handling

	public event PropertyChangedEventHandler PropertyChanged;

	protected virtual void SendPropertyChanged(string propertyName)
	{
		if (PropertyChanged != null)
		{
			PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}

	#endregion

	#region Extensibility Method Definitions

	partial void OnCreated();
	partial void OnAspectRatioChanged();
	partial void OnAspectRatioChanging(string value);
	partial void OnIDChanged();
	partial void OnIDChanging(int value);
	partial void OnResolution1Changed();
	partial void OnResolution1Changing(string value);

	#endregion

	#region string AspectRatio

	private string _aspectRatio;
	[DebuggerNonUserCode]
	[Column(Storage = "_aspectRatio", Name = "aspectRatio", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string AspectRatio
	{
		get
		{
			return _aspectRatio;
		}
		set
		{
			if (value != _aspectRatio)
			{
				OnAspectRatioChanging(value);
				SendPropertyChanging();
				_aspectRatio = value;
				SendPropertyChanged("AspectRatio");
				OnAspectRatioChanged();
			}
		}
	}

	#endregion

	#region int ID

	private int _id;
	[DebuggerNonUserCode]
	[Column(Storage = "_id", Name = "id", DbType = "int", IsPrimaryKey = true, IsDbGenerated = true, AutoSync = AutoSync.Never, CanBeNull = false)]
	public int ID
	{
		get
		{
			return _id;
		}
		set
		{
			if (value != _id)
			{
				OnIDChanging(value);
				SendPropertyChanging();
				_id = value;
				SendPropertyChanged("ID");
				OnIDChanged();
			}
		}
	}

	#endregion

	#region string Resolution1

	private string _resolution1;
	[DebuggerNonUserCode]
	[Column(Storage = "_resolution1", Name = "resolution", DbType = "varchar(20)", AutoSync = AutoSync.Never)]
	public string Resolution1
	{
		get
		{
			return _resolution1;
		}
		set
		{
			if (value != _resolution1)
			{
				OnResolution1Changing(value);
				SendPropertyChanging();
				_resolution1 = value;
				SendPropertyChanged("Resolution1");
				OnResolution1Changed();
			}
		}
	}

	#endregion

	#region ctor

	public Resolution()
	{
		OnCreated();
	}

	#endregion

}
