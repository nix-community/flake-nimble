{
  description = ''X-Plane XPLM SDK wrapper'';
  inputs.src-XPLM-Nim-master.flake = false;
  inputs.src-XPLM-Nim-master.type = "github";
  inputs.src-XPLM-Nim-master.owner = "jpoirier";
  inputs.src-XPLM-Nim-master.repo = "XPLM-Nim";
  inputs.src-XPLM-Nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-XPLM-Nim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-XPLM-Nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-XPLM-Nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}