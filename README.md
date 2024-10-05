# My Robotic - Node Kalkulator Trigonometri ROS2

Proyek ini adalah bagian dari Robot Pribadi saya yang terdiri dari node ROS 2 untuk melakukan perhitungan trigonometri. Node ini dapat menghitung nilai sinus, cosinus, tangen, dan fungsi inversenya berdasarkan derajat yang dipilih secara acak.


## Deskripsi Node

### `result.cpp`
Node ini diimplementasikan di file `result.cpp`, yang mendengarkan topik bernama `trig_operation` dan mempublikasikan hasil ke topik `trig_result`. Operasi trigonometri yang didukung adalah:
- `sin` (sinus)
- `cos` (cosinus)
- `tan` (tangen)
- `asin` (arc-sinus)
- `acos` (arc-cosinus)
- `atan` (arc-tangen)

### Pemilihan Sudut Acak
Node ini secara acak memilih sudut dari daftar derajat yang telah ditentukan (0, 15, 30, ..., 360), mengonversinya ke radian, dan melakukan operasi trigonometri yang diminta.

## Cara Menjalankan Node

Untuk menjalankan node kalkulator trigonometri, ikuti langkah-langkah berikut:

1. **Build workspace**:
   
   ```bash
   cd Ros2_node/ros2_workspace_3
   colcon build
    ```
2. Source workspace:

    ```bash
    source install/setup.bash
    ```
3. Jalankan Node : 
   
   ```bash
    ros2 run calcu_node result
   ```

   - Contoh Penggunaan
   Untuk melakukan perhitungan sinus, kirim pesan ke topik trig_operation:

    ```bash
    ros2 topic pub /trig_operation std_msgs/String "{data: 'sin'}"
    ```
<br>

## NB :

## Proyek ini membutuhkan:

ROS 2 (diuji dengan Foxy)
std_msgs untuk tipe pesan
rclcpp untuk pustaka klien ROS 2


## Deskripsi Folder Remote Controller Menggunakan Flutter

- **Robot_Controller/**: Berisi semua platform dan kode untuk pengontrol robot.
  - **android/**: Berisi file untuk menjalankan proyek di platform Android.
  - **assets/**: Berisi aset seperti gambar dan file statis lainnya yang digunakan dalam aplikasi.
  - **ios/**: Berisi file untuk menjalankan proyek di platform iOS.
  - **lib/**: Berisi kode sumber utama aplikasi.
  - **linux/**: Berisi file untuk menjalankan proyek di platform Linux.
  - **macos/**: Berisi file untuk menjalankan proyek di platform macOS.
  - **test/**: Folder yang berisi tes unit untuk aplikasi.
  - **web/**: Berisi file untuk menjalankan proyek di platform Web.
  - **windows/**: Berisi file untuk menjalankan proyek di platform Windows.

- **Cpp/**: Berisi kode-kode C++ untuk proyek lainnya.
- **Ros2_Node/**: Folder yang berisi node ROS 2 untuk komunikasi antar robot atau sensor.# MyOwn-RosRobot



<div align-items="center"> 
   
   # Thank Youu
   
   </div>
