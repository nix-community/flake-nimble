{
  description = ''Efficient object storage system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-stor-master.flake = false;
  inputs.src-stor-master.type = "github";
  inputs.src-stor-master.owner = "nimscale";
  inputs.src-stor-master.repo = "stor";
  inputs.src-stor-master.ref = "refs/heads/master";
  inputs.src-stor-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stor-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}