{
  description = ''remarker_light is a command line tool for building a remark-based slideshow page very easily.'';
  inputs.src-remarker_light-1_0_0.flake = false;
  inputs.src-remarker_light-1_0_0.type = "github";
  inputs.src-remarker_light-1_0_0.owner = "muxueqz";
  inputs.src-remarker_light-1_0_0.repo = "remarker_light";
  inputs.src-remarker_light-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, src-remarker_light-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-remarker_light-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-remarker_light-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}