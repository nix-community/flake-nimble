{
  description = ''vectored io for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-vecio-master.flake = false;
  inputs.src-vecio-master.type = "github";
  inputs.src-vecio-master.owner = "emekoi";
  inputs.src-vecio-master.repo = "vecio.nim";
  inputs.src-vecio-master.ref = "refs/heads/master";
  inputs.src-vecio-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vecio-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vecio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vecio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}