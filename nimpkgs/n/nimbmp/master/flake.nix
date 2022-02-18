{
  description = ''BMP encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimbmp-master.flake = false;
  inputs.src-nimbmp-master.type = "github";
  inputs.src-nimbmp-master.owner = "jangko";
  inputs.src-nimbmp-master.repo = "nimBMP";
  inputs.src-nimbmp-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbmp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbmp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbmp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}