{
  description = ''A very simple micro web framework'';
  inputs.src-mike-master.flake = false;
  inputs.src-mike-master.type = "github";
  inputs.src-mike-master.owner = "ire4ever1190";
  inputs.src-mike-master.repo = "mike";
  inputs.src-mike-master.ref = "refs/heads/master";
  
  
  inputs."httpx".type = "github";
  inputs."httpx".owner = "riinr";
  inputs."httpx".repo = "flake-nimble";
  inputs."httpx".ref = "flake-pinning";
  inputs."httpx".dir = "nimpkgs/h/httpx";

  
  inputs."websocketx".type = "github";
  inputs."websocketx".owner = "riinr";
  inputs."websocketx".repo = "flake-nimble";
  inputs."websocketx".ref = "flake-pinning";
  inputs."websocketx".dir = "nimpkgs/w/websocketx";

  outputs = { self, nixpkgs, src-mike-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mike-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mike-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}