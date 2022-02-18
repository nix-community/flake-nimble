{
  description = ''A library for playing audio files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-parasound-master.flake = false;
  inputs.src-parasound-master.type = "github";
  inputs.src-parasound-master.owner = "paranim";
  inputs.src-parasound-master.repo = "parasound";
  inputs.src-parasound-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-parasound-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parasound-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-parasound-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}