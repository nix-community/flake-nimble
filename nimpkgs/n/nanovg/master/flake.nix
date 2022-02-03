{
  description = ''Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL'';
  inputs.src-nanovg-master.flake = false;
  inputs.src-nanovg-master.type = "github";
  inputs.src-nanovg-master.owner = "johnnovak";
  inputs.src-nanovg-master.repo = "nim-nanovg";
  inputs.src-nanovg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nanovg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanovg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nanovg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}