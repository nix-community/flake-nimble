{
  description = ''Marc21 parser for Nimlang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-NimMarc-master.flake = false;
  inputs.src-NimMarc-master.type = "github";
  inputs.src-NimMarc-master.owner = "rsirres";
  inputs.src-NimMarc-master.repo = "NimMarc";
  inputs.src-NimMarc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-NimMarc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NimMarc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-NimMarc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}