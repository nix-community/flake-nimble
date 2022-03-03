{
  description = ''An efficient HTTP tool suite written in pure nim. Help you to write HTTP services or clients via TCP, UDP, or even Unix Domain socket, etc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-httpkit-master.flake = false;
  inputs.src-httpkit-master.type = "github";
  inputs.src-httpkit-master.owner = "tulayang";
  inputs.src-httpkit-master.repo = "httpkit";
  inputs.src-httpkit-master.ref = "refs/heads/master";
  inputs.src-httpkit-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-httpkit-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpkit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httpkit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}