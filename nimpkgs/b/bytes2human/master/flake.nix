{
  description = ''Convert bytes to kilobytes, megabytes, gigabytes, etc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bytes2human-master.flake = false;
  inputs.src-bytes2human-master.type = "github";
  inputs.src-bytes2human-master.owner = "juancarlospaco";
  inputs.src-bytes2human-master.repo = "nim-bytes2human";
  inputs.src-bytes2human-master.ref = "refs/heads/master";
  inputs.src-bytes2human-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bytes2human-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bytes2human-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bytes2human-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}