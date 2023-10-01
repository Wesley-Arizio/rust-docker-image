use std::io;

#[derive(Debug)]
enum AppError {
    InputNameError,
}

fn main() -> Result<(), AppError> {
    println!("What's your name? ");

    let mut name = String::new();

    io::stdin()
        .read_line(&mut name)
        .map_err(|_| AppError::InputNameError)?;

    println!("Welcome to the app {}", name);

    Ok(())
}
