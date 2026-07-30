# 🛡️ CCFI — Code and Control Flow Integrity for Embedded Systems

**CCFI** is a B.Sc. final project implementing a **Code and Control Flow Integrity** mechanism for embedded systems. The solution is designed as a lightweight, architecture-agnostic add-on module, making it easy to adapt to different embedded targets beyond the one it was originally designed for.

> Developed by **Avihay Grigiac** and **Itai Riven** at the Faculty of Engineering, Bar-Ilan University.

---

## 🔍 What is CFI?

**Control Flow Integrity (CFI)** is a security technique that prevents attackers from redirecting program execution (e.g. via buffer overflows or return-oriented programming). This project extends the concept to **Code integrity** as well — ensuring that the code itself hasn't been tampered with at runtime — making it **CCFI** (Code + Control Flow Integrity).

---

## ✨ Features

- Add-on implementation — does not require modifying the target application's source code
- Architecture-agnostic design for easy porting
- Implemented in Python and MATLAB for analysis and simulation
- Validated on an embedded target platform using Assembly
- Based on published academic research (see project book)

---

## 🏗️ Tech Stack

| Component | Technology |
|-----------|-----------|
| Core implementation | Python 3 |
| Signal analysis & simulation | MATLAB |
| Embedded target code | Assembly |

---

## 📂 Project Structure

```
Final-project--CFI/
├── Python_code/                          # Main CCFI implementation in Python
├── matlab/                               # MATLAB simulation and analysis scripts
├── MATLAB.zip                            # Compressed MATLAB workspace
├── README.md                             # This file
├── Midterm Presentation - Code and       # Mid-project academic presentation
│   Control Flow Integrity.pptx
└── Project Book_Avihay Grigiac          # Full project book (background,
    and Itai Riven.pdf                    # design, results)
```

---

## 🚀 Getting Started

### Prerequisites
- Python 3.7+
- MATLAB (R2019b or later recommended)
- An 8051/ADuC-compatible assembler (for the embedded target)

### Running the Python Component

```bash
cd Python_code
python3 main.py
```

### Running the MATLAB Component

1. Open MATLAB.
2. Navigate to the `matlab/` folder.
3. Run the main script:
   ```matlab
   run main.m
   ```

---

## 📄 Documentation

- **Project Book:** [`Project Book_Avihay Grigiac and Itai Riven.pdf`](./Project%20Book_Avihay%20Grigiac%20and%20Itai%20Riven.pdf)
  Full academic documentation including background research, system architecture, implementation details, and results.

- **Midterm Presentation:** [`Midterm Presentation - Code and Control Flow Integrity.pptx`](./Midterm%20Presentation%20-%20Code%20and%20Control%20Flow%20Integrity.pptx)
  Overview of the project's goals and progress at the midterm stage.

---

## 🎓 Academic Context

Final project for the **B.Sc. in Computer Engineering** at the **Faculty of Engineering, Bar-Ilan University**.

---

## 👥 Authors

- **Avihay Grigiac** — [github.com/agrrr](https://github.com/agrrr)
- **Itai Riven**
