{
  description = ''Static blog generator ala Jekyll.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ipsumgenera-master.flake = false;
  inputs.src-ipsumgenera-master.type = "github";
  inputs.src-ipsumgenera-master.owner = "dom96";
  inputs.src-ipsumgenera-master.repo = "ipsumgenera";
  inputs.src-ipsumgenera-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ipsumgenera-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ipsumgenera-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ipsumgenera-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}