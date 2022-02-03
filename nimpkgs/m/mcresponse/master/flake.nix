{
  description = ''mConnect Standardised Response Package'';
  inputs.src-mcresponse-master.flake = false;
  inputs.src-mcresponse-master.type = "github";
  inputs.src-mcresponse-master.owner = "abbeymart";
  inputs.src-mcresponse-master.repo = "mcresponse-nim";
  inputs.src-mcresponse-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mcresponse-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcresponse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mcresponse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}