{
  description = ''Useful utilities for manipulating and visualizing byte blobs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-byteutils-master.flake = false;
  inputs.src-byteutils-master.type = "github";
  inputs.src-byteutils-master.owner = "status-im";
  inputs.src-byteutils-master.repo = "nim-byteutils";
  inputs.src-byteutils-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-byteutils-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-byteutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-byteutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}