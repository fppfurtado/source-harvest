export function RouteTable({ routes }: { routes: Route[] }) {
  return (
    <table className="route-table">
      <thead><tr><th>Name</th><th>Distance</th><th>Elevation</th><th>Surface</th><th>Owner</th><th>Updated</th></tr></thead>
      <tbody>{routes.map(r => <RouteRow key={r.id} route={r} />)}</tbody>
    </table>
  );
}
