export function SignUp() {
  const [email, setEmail] = useState("");
  const [error, setError] = useState<string | null>(null);
  const submit = () => setError(isEmail(email) ? null : "Invalid email");
  return (<form onSubmit={submit}><input value={email} onChange={e => setEmail(e.target.value)} />{error}<button>Submit</button></form>);
}
