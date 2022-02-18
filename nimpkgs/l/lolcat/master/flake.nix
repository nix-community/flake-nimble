{
  description = ''lolcat implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-lolcat-master.flake = false;
  inputs.src-lolcat-master.type = "github";
  inputs.src-lolcat-master.owner = "OHermesJunior";
  inputs.src-lolcat-master.repo = "lolcat.nim";
  inputs.src-lolcat-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lolcat-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lolcat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lolcat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}