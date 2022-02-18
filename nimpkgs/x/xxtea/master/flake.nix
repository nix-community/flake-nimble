{
  description = ''XXTEA encryption algorithm library written in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xxtea-master.flake = false;
  inputs.src-xxtea-master.type = "github";
  inputs.src-xxtea-master.owner = "xxtea";
  inputs.src-xxtea-master.repo = "xxtea-nim";
  inputs.src-xxtea-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xxtea-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xxtea-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xxtea-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}