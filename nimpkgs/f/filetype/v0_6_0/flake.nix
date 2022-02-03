{
  description = ''Small and dependency free Nim package to infer file and MIME type checking the magic numbers signature.'';
  inputs.src-filetype-v0_6_0.flake = false;
  inputs.src-filetype-v0_6_0.type = "github";
  inputs.src-filetype-v0_6_0.owner = "jiro4989";
  inputs.src-filetype-v0_6_0.repo = "filetype";
  inputs.src-filetype-v0_6_0.ref = "refs/tags/v0.6.0";
  
  outputs = { self, nixpkgs, src-filetype-v0_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-filetype-v0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-filetype-v0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}