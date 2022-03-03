{
  description = ''A very simple micro web framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mike-master.flake = false;
  inputs.src-mike-master.type = "github";
  inputs.src-mike-master.owner = "ire4ever1190";
  inputs.src-mike-master.repo = "mike";
  inputs.src-mike-master.ref = "refs/heads/master";
  inputs.src-mike-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."httpx".type = "github";
  # inputs."httpx".owner = "riinr";
  # inputs."httpx".repo = "flake-nimble";
  # inputs."httpx".ref = "flake-pinning";
  # inputs."httpx".dir = "nimpkgs/h/httpx";
  # inputs."httpx".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."websocketx".type = "github";
  # inputs."websocketx".owner = "riinr";
  # inputs."websocketx".repo = "flake-nimble";
  # inputs."websocketx".ref = "flake-pinning";
  # inputs."websocketx".dir = "nimpkgs/w/websocketx";
  # inputs."websocketx".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."websocketx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-mike-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mike-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mike-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}