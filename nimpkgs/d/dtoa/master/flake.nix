{
  description = ''Port of Milo Yip's fast dtoa() implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dtoa-master.flake = false;
  inputs.src-dtoa-master.type = "github";
  inputs.src-dtoa-master.owner = "LemonBoy";
  inputs.src-dtoa-master.repo = "dtoa.nim";
  inputs.src-dtoa-master.ref = "refs/heads/master";
  inputs.src-dtoa-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dtoa-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dtoa-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dtoa-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}