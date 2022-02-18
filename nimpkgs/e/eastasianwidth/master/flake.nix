{
  description = ''eastasianwidth is library for EastAsianWidth.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eastasianwidth-master.flake = false;
  inputs.src-eastasianwidth-master.type = "github";
  inputs.src-eastasianwidth-master.owner = "jiro4989";
  inputs.src-eastasianwidth-master.repo = "eastasianwidth";
  inputs.src-eastasianwidth-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-eastasianwidth-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eastasianwidth-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eastasianwidth-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}