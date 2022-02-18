{
  description = ''eaiser use of OpenGL and GLSL shaders'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."phosphor-master".type = "github";
  inputs."phosphor-master".owner = "riinr";
  inputs."phosphor-master".repo = "flake-nimble";
  inputs."phosphor-master".ref = "flake-pinning";
  inputs."phosphor-master".dir = "nimpkgs/p/phosphor/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
