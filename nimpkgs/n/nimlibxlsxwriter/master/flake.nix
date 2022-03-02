{
  description = ''libxslxwriter wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimlibxlsxwriter-master.flake = false;
  inputs.src-nimlibxlsxwriter-master.type = "github";
  inputs.src-nimlibxlsxwriter-master.owner = "ThomasTJdev";
  inputs.src-nimlibxlsxwriter-master.repo = "nimlibxlsxwriter";
  inputs.src-nimlibxlsxwriter-master.ref = "refs/heads/master";
  inputs.src-nimlibxlsxwriter-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimlibxlsxwriter-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlibxlsxwriter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimlibxlsxwriter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}