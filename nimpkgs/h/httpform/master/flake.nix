{
  description = ''Http request form parser'';
  inputs.src-httpform-master.flake = false;
  inputs.src-httpform-master.type = "github";
  inputs.src-httpform-master.owner = "tulayang";
  inputs.src-httpform-master.repo = "httpform";
  inputs.src-httpform-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-httpform-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpform-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpform-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}