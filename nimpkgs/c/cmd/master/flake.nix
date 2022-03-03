{
  description = ''interactive command prompt'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cmd-master.flake = false;
  inputs.src-cmd-master.type = "github";
  inputs.src-cmd-master.owner = "samdmarshall";
  inputs.src-cmd-master.repo = "cmd.nim";
  inputs.src-cmd-master.ref = "refs/heads/master";
  inputs.src-cmd-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cmd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cmd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cmd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}