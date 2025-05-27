<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f8f9fa;
        }

        .registration-container {
            width: 100%;
            max-width: 400px;
            padding: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-register {
            background-color: #28a745;
            border-color: #28a745;
            color: white;
            padding: 8px 20px;
        }

        .login-link {
            margin-left: 20px;
            color: #007bff;
            text-decoration: none;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        .success-message {
            text-align: center;
            margin-top: 20px;
            color: #28a745;
        }
    </style>
</head>

<body>
    <div class="registration-container">
        <h1>Registration</h1>

        @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
        @endif

        <form action="/register" method="POST">
            @csrf
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
                @error('email')
                <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label for="name">Nama</label>
                <input type="text" class="form-control" id="name" name="name" required>
                @error('name')
                <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
                @error('password')
                <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label for="password_confirmation">Konfirmasi Password</label>
                <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" required>
            </div>

            <div class="d-flex align-items-center">
                <button type="submit" class="btn btn-register">Register</button>
                <a href="/login" class="login-link">Sudah punya akun? Login</a>
            </div>
        </form>

        @if(session('success'))
        <div class="success-message">
            Registrasi berhasil
        </div>
        @endif
    </div>
</body>

</html>