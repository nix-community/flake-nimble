{
  description = ''A simple chunked external protocol interface for Splunk custom search commands.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nim_cexc-master.flake = false;
  inputs.src-nim_cexc-master.type = "github";
  inputs.src-nim_cexc-master.owner = "metasyn";
  inputs.src-nim_cexc-master.repo = "nim-cexc-splunk";
  inputs.src-nim_cexc-master.ref = "refs/heads/master";
  inputs.src-nim_cexc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nim_cexc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_cexc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim_cexc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}