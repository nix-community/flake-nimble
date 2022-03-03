{
  description = ''An alternative time library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-timestamp-master.flake = false;
  inputs.src-timestamp-master.type = "github";
  inputs.src-timestamp-master.owner = "jackhftang";
  inputs.src-timestamp-master.repo = "timestamp.nim";
  inputs.src-timestamp-master.ref = "refs/heads/master";
  inputs.src-timestamp-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timestamp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timestamp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timestamp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}