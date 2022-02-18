{
  description = ''Nim wrapper for the Chromium Embedded Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimcef-master.flake = false;
  inputs.src-nimcef-master.type = "github";
  inputs.src-nimcef-master.owner = "jangko";
  inputs.src-nimcef-master.repo = "nimCEF";
  inputs.src-nimcef-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcef-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcef-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcef-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}