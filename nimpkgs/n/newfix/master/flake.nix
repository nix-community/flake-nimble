{
  description = ''FIX Protocol optimized parser (Financial Information eXchange)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-newfix-master.flake = false;
  inputs.src-newfix-master.type = "github";
  inputs.src-newfix-master.owner = "inv2004";
  inputs.src-newfix-master.repo = "newfix";
  inputs.src-newfix-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-newfix-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-newfix-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-newfix-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}