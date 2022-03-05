{
  description = ''Obsolete - please use sixense instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-io-sixense-master.flake = false;
  inputs.src-io-sixense-master.type = "github";
  inputs.src-io-sixense-master.owner = "nimious";
  inputs.src-io-sixense-master.repo = "io-sixense";
  inputs.src-io-sixense-master.ref = "refs/heads/master";
  inputs.src-io-sixense-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-io-sixense-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-sixense-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-io-sixense-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}