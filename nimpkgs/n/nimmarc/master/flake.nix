{
  description = ''Marc21 parser for Nimlang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimmarc-master.flake = false;
  inputs.src-nimmarc-master.type = "github";
  inputs.src-nimmarc-master.owner = "rsirres";
  inputs.src-nimmarc-master.repo = "NimMarc";
  inputs.src-nimmarc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimmarc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimmarc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimmarc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}