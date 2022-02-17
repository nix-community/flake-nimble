{
  description = ''A very simple micro web framework'';
  inputs.src-mike-1_2_1.flake = false;
  inputs.src-mike-1_2_1.type = "github";
  inputs.src-mike-1_2_1.owner = "ire4ever1190";
  inputs.src-mike-1_2_1.repo = "mike";
  inputs.src-mike-1_2_1.ref = "refs/tags/1.2.1";
  
  
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

  outputs = { self, nixpkgs, src-mike-1_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mike-1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mike-1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}