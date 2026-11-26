# MarkMirror: ResultRadar Rush
### Intelligent Student Academic Performance Analysis & Result Prediction Platform

> **Hackathon Track**: AI + Data Analytics + Education  
> **Status**: Full Working Project (Frontend + Backend + AI/ML + DB)

---

## 🌟 What is MarkMirror: ResultRadar Rush?

Traditional academic report cards display post-mortem numbers: subject marks, total score, and pass/fail status. They fail to explain:
* **Why** a student's trajectory is declining.
* **Which** subjects require immediate intervention.
* **How** much score is needed in future exams to achieve a target CGPA.
* **What** the student's next examination marks could look like based on velocity.

**MarkMirror: ResultRadar Rush** solves these challenges by combining:
1. **MarkMirror (Diagnostic Engine)**: Evaluates past and present results, normalizes scores, computes GPA/CGPA, and detects weak/bottleneck courses.
2. **ResultRadar Rush (Predictive Engine)**: Uses Scikit-Learn regression and trend heuristics to project future exam scores, trigger **Early Warning System (EWS)** alerts, and prescribe personalized remedial action plans.

---

## 🚀 Key Modules Implemented

| Module | Name | Technology | Description |
| :---: | :--- | :--- | :--- |
| **1** | **Authentication & RBAC** | React + Flask + PBKDF2 | Student & Teacher roles, profiles, and demo quick-login |
| **2** | **Marks Management** | React + Flask + SQLAlchemy | Add/Edit/Delete exams, scaled marks (obtained/max) |
| **3** | **Result Analysis Engine** | Python + NumPy | Overall %, GPA, CGPA, Letter grading (A+, A, B, etc.) |
| **4** | **Performance Comparison** | Pandas + Chart.js | Exam-over-exam delta ($\Delta$), bar comparison, velocity status |
| **5** | **ResultRadar Dashboard** | Chart.js Radar + Tailwind | Interactive multi-axis spider radar diagram of all subjects |
| **6** | **Weak Subject Detection** | Python Algorithm | 4-tier risk thresholding (Critical, Attention, Proficient, Strong) |
| **7** | **AI Study Recommendations** | Python AI Engine | Contextual action roadmaps + Interactive AI Academic Copilot Q&A |
| **8** | **Result Prediction** | Scikit-Learn Regression | Next assessment forecast + "What-If" Target Simulator |
| **9** | **Teacher / Admin Portal** | React + Flask | Class cohort heatmap, course difficulty ranking, at-risk flags |
| **10** | **Smart Report Generator** | ReportLab (Python) | One-click downloadable official academic PDF transcript |

---

## 🏗️ System Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    PRESENTATION LAYER                       │
│    React.js (Vite) + Tailwind CSS + Lucide Icons + Chart.js  │
│  (Student Portal, ResultRadar Dash, Teacher View, Reports)  │
└──────────────────────────────┬──────────────────────────────┘
                               │  JSON over REST APIs (CORS)
┌──────────────────────────────▼──────────────────────────────┐
│                    APPLICATION LAYER                        │
│               Python 3 + Flask + Flask-CORS                 │
│      (Auth, Route Handlers, Request Validation, Middleware)  │
└──────────────────────────────┬──────────────────────────────┘
                               │
            ┌──────────────────┴──────────────────┐
            ▼                                     ▼
┌──────────────────────────────┐    ┌──────────────────────────────┐
│       ANALYTICS & AI         │    │        DATABASE LAYER        │
│ • Pandas & NumPy (Stats)     │    │ • SQLAlchemy ORM             │
│ • Scikit-learn (Linear Reg)  │    │ • SQLite (Zero-config local) │
│ • Remedial Rules Engine      │    │ • MySQL (Production ready)   │
│ • PDF Engine (ReportLab)     │    │ • Automated demo seeder      │
└──────────────────────────────┘    └──────────────────────────────┘
```

---

## ⚡ Quick Start Instructions

### Prerequisites
* **Python 3.10+**
* **Node.js 18+ and npm**

### 1. Run with Single Click
Double-click `run_project.bat` (or execute `.\run_project.ps1` in PowerShell).

### 2. Manual Start

#### Backend:
```bash
cd backend
python app.py
# Server runs on http://localhost:5000
```

#### Frontend:
```bash
cd frontend
npm.cmd run dev
# Frontend runs on http://localhost:3000
```

---

## 👤 Pre-Seeded Hackathon Demo Accounts

| Role | Name | Email | Password | What Judges Will See |
| :--- | :--- | :--- | :--- | :--- |
| **Student** | Rahul Sharma | `rahul@markmirror.edu` | `password123` | 3 sequential exams showing clear recovery in Mathematics, strong Programming, ResultRadar, and Scikit-Learn predictions. |
| **Teacher** | Prof. Anita Rao | `teacher@markmirror.edu` | `password123` | Cohort average, course difficulty ranking, and student risk surveillance. |
| **At-Risk** | Amit Verma | `amit@markmirror.edu` | `password123` | Triggers Early Warning System (EWS) with sharp velocity decline. |

*(You can also click **"Demo Data"** in the top navbar anytime to instantly reset and reload the dataset).*

---

## 🎤 Hackathon Presentation Sequence

1. **Problem**: Students receive static marks cards with no diagnostic insights.
2. **ResultRadar**: Demonstrate the multi-axis radar chart showing subject balance at a glance.
3. **Academic Velocity Index (AVI)**: Show how Rahul's velocity shifted from negative to positive growth (+10.4%).
4. **Scikit-Learn Forecast**: Demonstrate the machine learning prediction for the next examination.
5. **Interactive "What-If" Simulator**: Move the target slider to 85% to demonstrate real-time score feasibility.
6. **AI Study Copilot**: Ask the live assistant *"Which subject should I focus on?"* and view the contextual answer.
7. **Teacher Surveillance**: Switch to Teacher View to show institutional retention and early intervention alerts.
8. **PDF Report Download**: Click "PDF Report" to showcase the one-click printable academic health check.
