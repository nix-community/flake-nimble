{
  description = ''Extends stdlib make it easy on some case'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-stdext-master.flake = false;
  inputs.src-stdext-master.type = "github";
  inputs.src-stdext-master.owner = "zendbit";
  inputs.src-stdext-master.repo = "nim.stdext";
  inputs.src-stdext-master.ref = "refs/heads/master";
  inputs.src-stdext-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stdext-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stdext-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stdext-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}