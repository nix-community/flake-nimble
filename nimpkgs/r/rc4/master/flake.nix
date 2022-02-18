{
  description = ''RC4 library implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-RC4-master.flake = false;
  inputs.src-RC4-master.type = "github";
  inputs.src-RC4-master.owner = "OHermesJunior";
  inputs.src-RC4-master.repo = "nimRC4";
  inputs.src-RC4-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-RC4-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-RC4-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-RC4-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}