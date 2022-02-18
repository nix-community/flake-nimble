{
  description = ''A very simple micro web framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mike-1_1_0.flake = false;
  inputs.src-mike-1_1_0.type = "github";
  inputs.src-mike-1_1_0.owner = "ire4ever1190";
  inputs.src-mike-1_1_0.repo = "mike";
  inputs.src-mike-1_1_0.ref = "refs/tags/1.1.0";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-mike-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mike-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mike-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}