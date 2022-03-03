{
  description = ''Wrapper around libopus'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-opussum-master.flake = false;
  inputs.src-opussum-master.type = "github";
  inputs.src-opussum-master.owner = "ire4ever1190";
  inputs.src-opussum-master.repo = "opussum";
  inputs.src-opussum-master.ref = "refs/heads/master";
  inputs.src-opussum-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opussum-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opussum-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opussum-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}