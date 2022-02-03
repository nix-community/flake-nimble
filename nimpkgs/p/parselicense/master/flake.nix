{
  description = ''Parse Standard SPDX Licenses from string to Enum'';
  inputs.src-parselicense-master.flake = false;
  inputs.src-parselicense-master.type = "github";
  inputs.src-parselicense-master.owner = "juancarlospaco";
  inputs.src-parselicense-master.repo = "parselicense";
  inputs.src-parselicense-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-parselicense-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parselicense-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-parselicense-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}