{
  description = ''RC4 library implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rc4-master.flake = false;
  inputs.src-rc4-master.type = "github";
  inputs.src-rc4-master.owner = "OHermesJunior";
  inputs.src-rc4-master.repo = "nimRC4";
  inputs.src-rc4-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rc4-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rc4-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rc4-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}