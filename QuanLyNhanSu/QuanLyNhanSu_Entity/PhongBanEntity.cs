using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyNhanSu_Entity
{
    public class PhongBanEntity
    {
        String MaPB, TenPB, MaTP, DiaChi, Sdt;

        public string Diachi
        {
            get
            {
                return DiaChi;
            }

            set
            {
                DiaChi = value;
            }
        }

        public string Mapb
        {
            get
            {
                return MaPB;
            }

            set
            {
                MaPB = value;
            }
        }

        public string MaTp
        {
            get
            {
                return MaTP;
            }

            set
            {
                MaTP = value;
            }
        }

        public string SDT
        {
            get
            {
                return Sdt;
            }

            set
            {
                Sdt = value;
            }
        }

        public string Tenpb
        {
            get
            {
                return TenPB;
            }

            set
            {
                TenPB = value;
            }
        }
    }
}
