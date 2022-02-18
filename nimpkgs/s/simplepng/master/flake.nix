{
  description = ''high level simple way to write PNGs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simplepng-master.flake = false;
  inputs.src-simplepng-master.type = "github";
  inputs.src-simplepng-master.owner = "jrenner";
  inputs.src-simplepng-master.repo = "nim-simplepng";
  inputs.src-simplepng-master.ref = "refs/heads/master";
  
  
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  outputs = { self, nixpkgs, flakeNimbleLib, src-simplepng-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simplepng-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simplepng-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}