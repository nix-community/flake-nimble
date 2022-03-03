{
  description = ''Easily use Animate.css classes'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-animatecss-master.flake = false;
  inputs.src-animatecss-master.type = "github";
  inputs.src-animatecss-master.owner = "thisago";
  inputs.src-animatecss-master.repo = "animatecss";
  inputs.src-animatecss-master.ref = "refs/heads/master";
  inputs.src-animatecss-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-animatecss-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-animatecss-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-animatecss-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}