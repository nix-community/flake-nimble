{
  description = ''ImGui Frontend for Nimble'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-NimbleImGui-master.flake = false;
  inputs.src-NimbleImGui-master.type = "github";
  inputs.src-NimbleImGui-master.owner = "qb-0";
  inputs.src-NimbleImGui-master.repo = "NimbleImGui";
  inputs.src-NimbleImGui-master.ref = "refs/heads/master";
  inputs.src-NimbleImGui-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimgl".type = "github";
  # inputs."nimgl".owner = "riinr";
  # inputs."nimgl".repo = "flake-nimble";
  # inputs."nimgl".ref = "flake-pinning";
  # inputs."nimgl".dir = "nimpkgs/n/nimgl";
  # inputs."nimgl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimgl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-NimbleImGui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NimbleImGui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-NimbleImGui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}