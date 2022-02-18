{
  description = ''Wrapper of the file procedures to provide an interface as similar as possible to that of Python'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."pythonfile-master".type = "github";
  inputs."pythonfile-master".owner = "riinr";
  inputs."pythonfile-master".repo = "flake-nimble";
  inputs."pythonfile-master".ref = "flake-pinning";
  inputs."pythonfile-master".dir = "nimpkgs/p/pythonfile/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}