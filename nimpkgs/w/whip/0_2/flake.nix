{
  description = ''Whip is high performance web application server based on httpbeast a nest for redix tree based routing with some extra opmtizations.'';
  inputs.src-whip-0_2.flake = false;
  inputs.src-whip-0_2.type = "github";
  inputs.src-whip-0_2.owner = "mattaylor";
  inputs.src-whip-0_2.repo = "whip";
  inputs.src-whip-0_2.ref = "refs/tags/0.2";
  
  
  inputs."packedjson".type = "github";
  inputs."packedjson".owner = "riinr";
  inputs."packedjson".repo = "flake-nimble";
  inputs."packedjson".ref = "flake-pinning";
  inputs."packedjson".dir = "nimpkgs/p/packedjson";

  
  inputs."nest".type = "github";
  inputs."nest".owner = "riinr";
  inputs."nest".repo = "flake-nimble";
  inputs."nest".ref = "flake-pinning";
  inputs."nest".dir = "nimpkgs/n/nest";

  
  inputs."httpbeast".type = "github";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".repo = "flake-nimble";
  inputs."httpbeast".ref = "flake-pinning";
  inputs."httpbeast".dir = "nimpkgs/h/httpbeast";

  outputs = { self, nixpkgs, src-whip-0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-whip-0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-whip-0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}