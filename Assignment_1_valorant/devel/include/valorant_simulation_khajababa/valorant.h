// Generated by gencpp from file valorant_simulation_khajababa/valorant.msg
// DO NOT EDIT!


#ifndef VALORANT_SIMULATION_KHAJABABA_MESSAGE_VALORANT_H
#define VALORANT_SIMULATION_KHAJABABA_MESSAGE_VALORANT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace valorant_simulation_khajababa
{
template <class ContainerAllocator>
struct valorant_
{
  typedef valorant_<ContainerAllocator> Type;

  valorant_()
    : message()
    , length(0)  {
    }
  valorant_(const ContainerAllocator& _alloc)
    : message(_alloc)
    , length(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef int32_t _length_type;
  _length_type length;





  typedef boost::shared_ptr< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> const> ConstPtr;

}; // struct valorant_

typedef ::valorant_simulation_khajababa::valorant_<std::allocator<void> > valorant;

typedef boost::shared_ptr< ::valorant_simulation_khajababa::valorant > valorantPtr;
typedef boost::shared_ptr< ::valorant_simulation_khajababa::valorant const> valorantConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::valorant_simulation_khajababa::valorant_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::valorant_simulation_khajababa::valorant_<ContainerAllocator1> & lhs, const ::valorant_simulation_khajababa::valorant_<ContainerAllocator2> & rhs)
{
  return lhs.message == rhs.message &&
    lhs.length == rhs.length;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::valorant_simulation_khajababa::valorant_<ContainerAllocator1> & lhs, const ::valorant_simulation_khajababa::valorant_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace valorant_simulation_khajababa

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> >
{
  static const char* value()
  {
    return "55fbd117b4d1d7ffc3d6b657a8d208f4";
  }

  static const char* value(const ::valorant_simulation_khajababa::valorant_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x55fbd117b4d1d7ffULL;
  static const uint64_t static_value2 = 0xc3d6b657a8d208f4ULL;
};

template<class ContainerAllocator>
struct DataType< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> >
{
  static const char* value()
  {
    return "valorant_simulation_khajababa/valorant";
  }

  static const char* value(const ::valorant_simulation_khajababa::valorant_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string message\n"
"int32 length\n"
;
  }

  static const char* value(const ::valorant_simulation_khajababa::valorant_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.message);
      stream.next(m.length);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct valorant_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::valorant_simulation_khajababa::valorant_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::valorant_simulation_khajababa::valorant_<ContainerAllocator>& v)
  {
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "length: ";
    Printer<int32_t>::stream(s, indent + "  ", v.length);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VALORANT_SIMULATION_KHAJABABA_MESSAGE_VALORANT_H