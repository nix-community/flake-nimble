{
  description = ''Tool/Lib to highlight text in CLI by using regular expressions.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-highlight-master.flake = false;
  inputs.src-highlight-master.type = "github";
  inputs.src-highlight-master.owner = "RaimundHuebel";
  inputs.src-highlight-master.repo = "nimhighlight";
  inputs.src-highlight-master.ref = "refs/heads/master";
  inputs.src-highlight-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-highlight-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-highlight-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-highlight-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}