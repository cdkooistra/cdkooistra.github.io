{ pkgs, ... }:

{
  packages = [
    pkgs.zola
    pkgs.rendercv
  ];

  scripts.build-resume.exec = ''
    rendercv render "$DEVENV_ROOT/resume/cv.yaml" --output-folder "$DEVENV_ROOT/resume/rendercv_output"
    cp "$DEVENV_ROOT/resume/rendercv_output/"*_CV.pdf "$DEVENV_ROOT/static/resume.pdf"
  '';
}
